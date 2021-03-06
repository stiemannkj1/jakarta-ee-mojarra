/*
 * Copyright (c) 1997, 2018 Oracle and/or its affiliates. All rights reserved.
 *
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License v. 2.0, which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * This Source Code may also be made available under the following Secondary
 * Licenses when the conditions for such availability set forth in the
 * Eclipse Public License v. 2.0 are satisfied: GNU General Public License,
 * version 2 with the GNU Classpath Exception, which is available at
 * https://www.gnu.org/software/classpath/license.html.
 *
 * SPDX-License-Identifier: EPL-2.0 OR GPL-2.0 WITH Classpath-exception-2.0
 */

package com.sun.faces.test.servlet30.facelets;

import java.io.Serializable;
import javax.faces.bean.ManagedBean;

@ManagedBean(name = "repeatSizeBean")
public class RepeatSizeBean implements Serializable {

    public int size = 5;

    private String[] strList;

    public String[] getStrList() {
        strList = new String[10];
        for (int i = 0; i < 10; i++) {
            strList[i] = "str" + i;
        }
        return strList;
    }

    public void setStrList(String[] strList) {
        this.strList = strList;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }
}
