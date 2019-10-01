/*----------------------------------------------------------------------------*/
/* Copyright (c) 2018 FIRST. All Rights Reserved.                             */
/* Open Source Software - may be modified and shared by FRC teams. The code   */
/* must be accompanied by the FIRST BSD license file in the root directory of */
/* the project.                                                               */
/*----------------------------------------------------------------------------*/

package edu.wpi.first.wpilibj.shuffleboard;

import java.util.List;
import java.util.NoSuchElementException;

import edu.wpi.first.networktables.NetworkTable;
import edu.wpi.first.wpilibj.Sendable;

/**
 * Represents a tab in the Shuffleboard dashboard. Widgets can be added to the tab with
 * {@link #add(Sendable)}, {@link #add(String, Object)}, and {@link #add(String, Sendable)}. Widgets
 * can also be added to layouts with {@link #getLayout(String, String)}; layouts can be nested
 * arbitrarily deep (note that too many levels may make deeper components unusable).
 */
public final class ShuffleboardTab implements ShuffleboardContainer {
  private final ContainerHelper m_helper = new ContainerHelper(this);
  private final ShuffleboardRoot m_root;
  private final String m_title;

  ShuffleboardTab(ShuffleboardRoot root, String title) {
    m_root = root;
    m_title = title;
  }

  @Override
  public String getTitle() {
    return m_title;
  }

  ShuffleboardRoot getRoot() {
    return m_root;
  }

  @Override
  public List<ShuffleboardComponent<?>> getComponents() {
    return m_helper.getComponents();
  }

  @Override
  public ShuffleboardLayout getLayout(String title, String type) {
    return m_helper.getLayout(title, type);
  }

  @Override
  public ShuffleboardLayout getLayout(String title) throws NoSuchElementException {
    return m_helper.getLayout(title);
  }

  @Override
  public ComplexWidget add(String title, Sendable sendable) {
    return m_helper.add(title, sendable);
  }

  @Override
  public ComplexWidget add(Sendable sendable) throws IllegalArgumentException {
    return m_helper.add(sendable);
  }

  @Override
  public SimpleWidget add(String title, Object defaultValue) {
    return m_helper.add(title, defaultValue);
  }

  @Override
  public void buildInto(NetworkTable parentTable, NetworkTable metaTable) {
    NetworkTable tabTable = parentTable.getSubTable(m_title);
    tabTable.getEntry(".type").setString("ShuffleboardTab");
    for (ShuffleboardComponent<?> component : m_helper.getComponents()) {
      component.buildInto(tabTable, metaTable.getSubTable(component.getTitle()));
    }
  }

}
