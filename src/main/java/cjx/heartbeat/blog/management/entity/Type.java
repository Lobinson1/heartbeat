package cjx.heartbeat.blog.management.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * ${DESCRIBE}
 *
 * @author chenjunxu
 * @date 2017/11/8
 */
@Table(name = "t_cjx_type")
@Entity
public class Type {

	@Id
	private Integer typeId;
	private String typeName;

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	@Override
	public String toString() {
		return "Type{" +
				"typeId=" + typeId +
				", typeName='" + typeName + '\'' +
				'}';
	}
}
