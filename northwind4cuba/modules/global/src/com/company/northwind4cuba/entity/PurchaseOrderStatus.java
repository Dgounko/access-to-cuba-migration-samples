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
@Table(name = "PURCHASE_ORDER_STATUS")
@Entity(name = "northwind4cuba$PurchaseOrderStatus")
public class PurchaseOrderStatus extends BaseIntegerIdEntity {
    private static final long serialVersionUID = -6369317330406530874L;

    @Column(name = "STATUS", length = 50)
    protected String status;

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }


}