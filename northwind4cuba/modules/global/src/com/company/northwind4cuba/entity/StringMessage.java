package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.AttributeOverrides;
import javax.persistence.AttributeOverride;
import javax.persistence.Column;
import com.haulmont.cuba.core.global.DesignSupport;
import com.haulmont.cuba.core.entity.BaseIntIdentityIdEntity;

@DesignSupport("{'imported':true}")
@AttributeOverrides({
        @AttributeOverride(name = "id", column = @Column(name = "STRING_ID"))
})
@Table(name = "STRING_MESSAGE")
@Entity(name = "northwind4cuba$StringMessage")
public class StringMessage extends BaseIntIdentityIdEntity {
    private static final long serialVersionUID = 4696519291968253496L;

    @Column(name = "STRING_DATA")
    protected String stringData;

    public void setStringData(String stringData) {
        this.stringData = stringData;
    }

    public String getStringData() {
        return stringData;
    }


}