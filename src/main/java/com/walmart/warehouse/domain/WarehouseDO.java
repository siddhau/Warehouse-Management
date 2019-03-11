package com.walmart.warehouse.domain;

import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Entity
@Table(name = "WAREHOUSE")
public class WarehouseDO extends BaseDO{
	
	@Column(name = "WAREHOUSE_KEY")
	private String warehouseKey;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "warehouse")
	private Set<ShelfGroupDO> shelfGroups = new HashSet<ShelfGroupDO>();
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "warehouse")
	private Set<DropLocationDO> dropLocations = new HashSet<DropLocationDO>();
	
	@PrePersist
	public void initilizeKey() {
		if(this.warehouseKey == null) {
			warehouseKey = UUID.randomUUID().toString();
		}
	}
}
