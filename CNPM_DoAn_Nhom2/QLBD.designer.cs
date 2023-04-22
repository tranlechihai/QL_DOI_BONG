﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CNPM_DoAn_Nhom2
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="QL_DOI_BONG")]
	public partial class QLBDDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void Inserttbl_Cauthu(tbl_Cauthu instance);
    partial void Updatetbl_Cauthu(tbl_Cauthu instance);
    partial void Deletetbl_Cauthu(tbl_Cauthu instance);
    partial void Inserttbl_Doi_Bong(tbl_Doi_Bong instance);
    partial void Updatetbl_Doi_Bong(tbl_Doi_Bong instance);
    partial void Deletetbl_Doi_Bong(tbl_Doi_Bong instance);
    #endregion
		
		public QLBDDataContext() : 
				base(global::CNPM_DoAn_Nhom2.Properties.Settings.Default.QL_DOI_BONGConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public QLBDDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public QLBDDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public QLBDDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public QLBDDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<tbl_Cauthu> tbl_Cauthus
		{
			get
			{
				return this.GetTable<tbl_Cauthu>();
			}
		}
		
		public System.Data.Linq.Table<tbl_Doi_Bong> tbl_Doi_Bongs
		{
			get
			{
				return this.GetTable<tbl_Doi_Bong>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tbl_Cauthu")]
	public partial class tbl_Cauthu : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID;
		
		private string _TenCauthu;
		
		private System.Nullable<System.DateTime> _NgaySinh;
		
		private System.Nullable<int> _Doi;
		
		private string _LoaiCauthu;
		
		private System.Nullable<int> _TongSoBanThang;
		
		private string _GhiChu;
		
		private EntityRef<tbl_Doi_Bong> _tbl_Doi_Bong;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDChanging(int value);
    partial void OnIDChanged();
    partial void OnTenCauthuChanging(string value);
    partial void OnTenCauthuChanged();
    partial void OnNgaySinhChanging(System.Nullable<System.DateTime> value);
    partial void OnNgaySinhChanged();
    partial void OnDoiChanging(System.Nullable<int> value);
    partial void OnDoiChanged();
    partial void OnLoaiCauthuChanging(string value);
    partial void OnLoaiCauthuChanged();
    partial void OnTongSoBanThangChanging(System.Nullable<int> value);
    partial void OnTongSoBanThangChanged();
    partial void OnGhiChuChanging(string value);
    partial void OnGhiChuChanged();
    #endregion
		
		public tbl_Cauthu()
		{
			this._tbl_Doi_Bong = default(EntityRef<tbl_Doi_Bong>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int ID
		{
			get
			{
				return this._ID;
			}
			set
			{
				if ((this._ID != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._ID = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenCauthu", DbType="NVarChar(150)")]
		public string TenCauthu
		{
			get
			{
				return this._TenCauthu;
			}
			set
			{
				if ((this._TenCauthu != value))
				{
					this.OnTenCauthuChanging(value);
					this.SendPropertyChanging();
					this._TenCauthu = value;
					this.SendPropertyChanged("TenCauthu");
					this.OnTenCauthuChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgaySinh", DbType="Date")]
		public System.Nullable<System.DateTime> NgaySinh
		{
			get
			{
				return this._NgaySinh;
			}
			set
			{
				if ((this._NgaySinh != value))
				{
					this.OnNgaySinhChanging(value);
					this.SendPropertyChanging();
					this._NgaySinh = value;
					this.SendPropertyChanged("NgaySinh");
					this.OnNgaySinhChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Doi", DbType="Int")]
		public System.Nullable<int> Doi
		{
			get
			{
				return this._Doi;
			}
			set
			{
				if ((this._Doi != value))
				{
					if (this._tbl_Doi_Bong.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnDoiChanging(value);
					this.SendPropertyChanging();
					this._Doi = value;
					this.SendPropertyChanged("Doi");
					this.OnDoiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_LoaiCauthu", DbType="NVarChar(150)")]
		public string LoaiCauthu
		{
			get
			{
				return this._LoaiCauthu;
			}
			set
			{
				if ((this._LoaiCauthu != value))
				{
					this.OnLoaiCauthuChanging(value);
					this.SendPropertyChanging();
					this._LoaiCauthu = value;
					this.SendPropertyChanged("LoaiCauthu");
					this.OnLoaiCauthuChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TongSoBanThang", DbType="Int")]
		public System.Nullable<int> TongSoBanThang
		{
			get
			{
				return this._TongSoBanThang;
			}
			set
			{
				if ((this._TongSoBanThang != value))
				{
					this.OnTongSoBanThangChanging(value);
					this.SendPropertyChanging();
					this._TongSoBanThang = value;
					this.SendPropertyChanged("TongSoBanThang");
					this.OnTongSoBanThangChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_GhiChu", DbType="NChar(10)")]
		public string GhiChu
		{
			get
			{
				return this._GhiChu;
			}
			set
			{
				if ((this._GhiChu != value))
				{
					this.OnGhiChuChanging(value);
					this.SendPropertyChanging();
					this._GhiChu = value;
					this.SendPropertyChanged("GhiChu");
					this.OnGhiChuChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="tbl_Doi_Bong_tbl_Cauthu", Storage="_tbl_Doi_Bong", ThisKey="Doi", OtherKey="ID", IsForeignKey=true)]
		public tbl_Doi_Bong tbl_Doi_Bong
		{
			get
			{
				return this._tbl_Doi_Bong.Entity;
			}
			set
			{
				tbl_Doi_Bong previousValue = this._tbl_Doi_Bong.Entity;
				if (((previousValue != value) 
							|| (this._tbl_Doi_Bong.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._tbl_Doi_Bong.Entity = null;
						previousValue.tbl_Cauthus.Remove(this);
					}
					this._tbl_Doi_Bong.Entity = value;
					if ((value != null))
					{
						value.tbl_Cauthus.Add(this);
						this._Doi = value.ID;
					}
					else
					{
						this._Doi = default(Nullable<int>);
					}
					this.SendPropertyChanged("tbl_Doi_Bong");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tbl_Doi_Bong")]
	public partial class tbl_Doi_Bong : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _ID;
		
		private string _Ten_Doi_Bong;
		
		private string _Ten_San_nha;
		
		private EntitySet<tbl_Cauthu> _tbl_Cauthus;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIDChanging(int value);
    partial void OnIDChanged();
    partial void OnTen_Doi_BongChanging(string value);
    partial void OnTen_Doi_BongChanged();
    partial void OnTen_San_nhaChanging(string value);
    partial void OnTen_San_nhaChanged();
    #endregion
		
		public tbl_Doi_Bong()
		{
			this._tbl_Cauthus = new EntitySet<tbl_Cauthu>(new Action<tbl_Cauthu>(this.attach_tbl_Cauthus), new Action<tbl_Cauthu>(this.detach_tbl_Cauthus));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int ID
		{
			get
			{
				return this._ID;
			}
			set
			{
				if ((this._ID != value))
				{
					this.OnIDChanging(value);
					this.SendPropertyChanging();
					this._ID = value;
					this.SendPropertyChanged("ID");
					this.OnIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Ten_Doi_Bong", DbType="NVarChar(150)")]
		public string Ten_Doi_Bong
		{
			get
			{
				return this._Ten_Doi_Bong;
			}
			set
			{
				if ((this._Ten_Doi_Bong != value))
				{
					this.OnTen_Doi_BongChanging(value);
					this.SendPropertyChanging();
					this._Ten_Doi_Bong = value;
					this.SendPropertyChanged("Ten_Doi_Bong");
					this.OnTen_Doi_BongChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Ten_San_nha", DbType="NVarChar(150)")]
		public string Ten_San_nha
		{
			get
			{
				return this._Ten_San_nha;
			}
			set
			{
				if ((this._Ten_San_nha != value))
				{
					this.OnTen_San_nhaChanging(value);
					this.SendPropertyChanging();
					this._Ten_San_nha = value;
					this.SendPropertyChanged("Ten_San_nha");
					this.OnTen_San_nhaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="tbl_Doi_Bong_tbl_Cauthu", Storage="_tbl_Cauthus", ThisKey="ID", OtherKey="Doi")]
		public EntitySet<tbl_Cauthu> tbl_Cauthus
		{
			get
			{
				return this._tbl_Cauthus;
			}
			set
			{
				this._tbl_Cauthus.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_tbl_Cauthus(tbl_Cauthu entity)
		{
			this.SendPropertyChanging();
			entity.tbl_Doi_Bong = this;
		}
		
		private void detach_tbl_Cauthus(tbl_Cauthu entity)
		{
			this.SendPropertyChanging();
			entity.tbl_Doi_Bong = null;
		}
	}
}
#pragma warning restore 1591
