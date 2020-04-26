
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
      'Providence Sunnyside Clinic',
      '9290 SE Sunnybrook Blvd Suite 120
Clackamas, OR 97015',
      'Clackamas',
      'OR',
      'Leave at front desk',
      'Yes',
      '45.4293242',
      '-122.569141'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Sunnyside Clinic'
        AND o.latitude = '45.4293242'
        AND o.longitude = '-122.569141'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Sunnyside Clinic'
        AND o.latitude = '45.4293242'
        AND o.longitude = '-122.569141'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face Shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Sunnyside Clinic'
        AND o.latitude = '45.4293242'
        AND o.longitude = '-122.569141'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable Booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Sunnyside Clinic'
        AND o.latitude = '45.4293242'
        AND o.longitude = '-122.569141'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety Goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Sunnyside Clinic'
        AND o.latitude = '45.4293242'
        AND o.longitude = '-122.569141'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Providence Sunnyside Clinic'
        AND o.latitude = '45.4293242'
        AND o.longitude = '-122.569141'));

COMMIT;
