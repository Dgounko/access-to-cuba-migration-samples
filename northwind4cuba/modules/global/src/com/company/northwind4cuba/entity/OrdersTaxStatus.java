package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.cuba.core.global.DesignSupport;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.BaseIntegerIdEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s|taxStatusName")
@DesignSupport("{'imported':true}")
@Table(name = "ORDERS_TAX_STATUS")
@Entity(name = "northwind4cuba$OrdersTaxStatus")
public class OrdersTaxStatus extends BaseIntegerIdEntity {
    private static final long serialVersionUID = -6665785368637754067L;

    @Column(name = "TAX_STATUS_NAME", nullable = false, length = 50)
    protected String taxStatusName;

    public void setTaxStatusName(String taxStatusName) {
        this.taxStatusName = taxStatusName;
    }

    public String getTaxStatusName() {
        return taxStatusName;
    }


}