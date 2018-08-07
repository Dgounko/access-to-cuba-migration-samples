package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.cuba.core.global.DesignSupport;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.BaseIntegerIdEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s|typeName")
@DesignSupport("{'imported':true}")
@Table(name = "INVENTORY_TRANSACTION_TYPE")
@Entity(name = "northwind4cuba$InventoryTransactionType")
public class InventoryTransactionType extends BaseIntegerIdEntity {
    private static final long serialVersionUID = 7192590854760825712L;

    @Column(name = "TYPE_NAME", nullable = false, length = 50)
    protected String typeName;

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getTypeName() {
        return typeName;
    }


}