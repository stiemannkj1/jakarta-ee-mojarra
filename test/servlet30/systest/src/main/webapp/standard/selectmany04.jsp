<%--

    Copyright (c) 1997, 2018 Oracle and/or its affiliates. All rights reserved.

    This program and the accompanying materials are made available under the
    terms of the Eclipse Public License v. 2.0, which is available at
    http://www.eclipse.org/legal/epl-2.0.

    This Source Code may also be made available under the following Secondary
    Licenses when the conditions for such availability set forth in the
    Eclipse Public License v. 2.0 are satisfied: GNU General Public License,
    version 2 with the GNU Classpath Exception, which is available at
    https://www.gnu.org/software/classpath/license.html.

    SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0

--%>

<%@ page contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%
  if (session.getAttribute("status") == null) {
    String[] a = {"1", "2"};
    session.setAttribute("status", a);
  }
%>
<f:view>
    <%--- test selected and enabled styles together --%>
    <h:selectManyCheckbox value="#{status}" enabledClass="six" disabledClass="seven" selectedClass="eight" unselectedClass="nine">
      <f:selectItem  itemValue="1" itemLabel="Open" />
      <f:selectItem itemValue="2" itemLabel="Submitted" itemDisabled="true" />
      <f:selectItem itemValue="3" itemLabel="Accepted" />
      <f:selectItem itemValue="4" itemLabel="Rejected" itemDisabled="true" />
    </h:selectManyCheckbox> 
</f:view>
