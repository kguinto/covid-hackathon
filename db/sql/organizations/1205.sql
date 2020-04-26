
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Keystone Health',
      '111 Chambers Hill Dr #200
Chambersburg, PA 17201',
      'Chambersburg',
      'PA',
      'Drop off can be made at the white tent outside of the building or shipped to our Admin office - 111 Chambers Hill Drive, Suite 200 Attn:  Purchasing Dept. Chambersburg, PA 17201',
      'No',
      '39.9443493',
      '-77.6410454'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keystone Health'
        AND o.latitude = '39.9443493'
        AND o.longitude = '-77.6410454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keystone Health'
        AND o.latitude = '39.9443493'
        AND o.longitude = '-77.6410454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keystone Health'
        AND o.latitude = '39.9443493'
        AND o.longitude = '-77.6410454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keystone Health'
        AND o.latitude = '39.9443493'
        AND o.longitude = '-77.6410454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keystone Health'
        AND o.latitude = '39.9443493'
        AND o.longitude = '-77.6410454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keystone Health'
        AND o.latitude = '39.9443493'
        AND o.longitude = '-77.6410454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keystone Health'
        AND o.latitude = '39.9443493'
        AND o.longitude = '-77.6410454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keystone Health'
        AND o.latitude = '39.9443493'
        AND o.longitude = '-77.6410454'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Isopropyl Alcohol bottles or prep pads',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keystone Health'
        AND o.latitude = '39.9443493'
        AND o.longitude = '-77.6410454'));

COMMIT;
