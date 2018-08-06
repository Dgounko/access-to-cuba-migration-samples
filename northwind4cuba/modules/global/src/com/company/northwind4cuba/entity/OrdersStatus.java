package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.AttributeOverrides;
import javax.persistence.AttributeOverride;
import javax.persistence.Column;
import com.haulmont.cuba.core.global.DesignSupport;
import com.haulmont.cuba.core.entity.BaseIntegerIdEntity;

@DesignSupport("{'imported':true}")
@AttributeOverrides({
        @AttributeOverride(name = "id", column = @Column(name = "STATUS_ID"))
})
@Table(name = "ORDERS_STATUS")
@Entity(name = "northwind4cuba$OrdersStatus")
public class OrdersStatus extends BaseIntegerIdEntity {
    private static final long serialVersionUID = -1927964490530242355L;

    @Column(name = "STATUS_NAME", nullable = false, length = 50)
    protected String statusName;

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    public String getStatusName() {
        return statusName;
    }


}