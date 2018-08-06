package com.company.northwind4cuba.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.AttributeOverrides;
import javax.persistence.AttributeOverride;
import javax.persistence.Column;
import com.haulmont.cuba.core.global.DesignSupport;
import java.util.List;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import com.haulmont.cuba.core.entity.BaseIntIdentityIdEntity;

@DesignSupport("{'imported':true}")
@AttributeOverrides({
        @AttributeOverride(name = "id", column = @Column(name = "PRIVILEGE_ID"))
})
@Table(name = "PRIVILEGE_")
@Entity(name = "northwind4cuba$Privilege")
public class Privilege extends BaseIntIdentityIdEntity {
    private static final long serialVersionUID = -3643037621959757936L;

    @JoinTable(name = "EMPLOYEE_PRIVILEGES",
        joinColumns = @JoinColumn(name = "PRIVILEGE_ID"),
        inverseJoinColumns = @JoinColumn(name = "EMPLOYEE_ID"))
    @ManyToMany
    protected List<Employee> employee;

    @Column(name = "PRIVILEGE_NAME", length = 50)
    protected String privilegeName;

    public void setEmployee(List<Employee> employee) {
        this.employee = employee;
    }

    public List<Employee> getEmployee() {
        return employee;
    }

    public void setPrivilegeName(String privilegeName) {
        this.privilegeName = privilegeName;
    }

    public String getPrivilegeName() {
        return privilegeName;
    }


}