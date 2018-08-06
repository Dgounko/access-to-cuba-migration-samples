package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.AttributeOverrides;
import javax.persistence.AttributeOverride;
import javax.persistence.Column;
import com.haulmont.cuba.core.global.DesignSupport;
import java.util.Date;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.BaseIntIdentityIdEntity;

@DesignSupport("{'imported':true}")
@AttributeOverrides({
        @AttributeOverride(name = "id", column = @Column(name = "TRANSACTION_ID"))
})
@Table(name = "INVENTORY_TRANSACTION")
@Entity(name = "northwind4cuba$InventoryTransaction")
public class InventoryTransaction extends BaseIntIdentityIdEntity {
    private static final long serialVersionUID = -4727210185645086060L;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "TRANSACTION_TYPE")
    protected InventoryTransactionType transactionType;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "TRANSACTION_CREATED_DATE")
    protected Date transactionCreatedDate;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "TRANSACTION_MODIFIED_DATE")
    protected Date transactionModifiedDate;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PRODUCT_ID")
    protected Product product;

    @Column(name = "QUANTITY", nullable = false)
    protected Integer quantity;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PURCHASE_ORDER_ID")
    protected PurchaseOrder purchaseOrder;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CUSTOMER_ORDER_ID")
    protected Order customerOrder;

    @Column(name = "COMMENTS")
    protected String comments;

    public void setTransactionType(InventoryTransactionType transactionType) {
        this.transactionType = transactionType;
    }

    public InventoryTransactionType getTransactionType() {
        return transactionType;
    }

    public void setTransactionCreatedDate(Date transactionCreatedDate) {
        this.transactionCreatedDate = transactionCreatedDate;
    }

    public Date getTransactionCreatedDate() {
        return transactionCreatedDate;
    }

    public void setTransactionModifiedDate(Date transactionModifiedDate) {
        this.transactionModifiedDate = transactionModifiedDate;
    }

    public Date getTransactionModifiedDate() {
        return transactionModifiedDate;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Product getProduct() {
        return product;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setPurchaseOrder(PurchaseOrder purchaseOrder) {
        this.purchaseOrder = purchaseOrder;
    }

    public PurchaseOrder getPurchaseOrder() {
        return purchaseOrder;
    }

    public void setCustomerOrder(Order customerOrder) {
        this.customerOrder = customerOrder;
    }

    public Order getCustomerOrder() {
        return customerOrder;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getComments() {
        return comments;
    }


}