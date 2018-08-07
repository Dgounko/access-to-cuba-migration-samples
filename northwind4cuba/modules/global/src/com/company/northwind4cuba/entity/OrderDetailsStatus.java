package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.AttributeOverrides;
import javax.persistence.AttributeOverride;
import javax.persistence.Column;
import com.haulmont.cuba.core.global.DesignSupport;
import com.haulmont.cuba.core.entity.BaseIntegerIdEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s|statusName")
@DesignSupport("{'imported':true}")
@AttributeOverrides({
        @AttributeOverride(name = "id", column = @Column(name = "STATUS_ID"))
})
@Table(name = "ORDER_DETAILS_STATUS")
@Entity(name = "northwind4cuba$OrderDetailsStatus")
public class OrderDetailsStatus extends BaseIntegerIdEntity {
    private static final long serialVersionUID = 8807390797366609623L;

    @Column(name = "STATUS_NAME", nullable = false, length = 50)
    protected String statusName;

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    public String getStatusName() {
        return statusName;
    }


}