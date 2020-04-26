
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
      'Around the Clock Home Care',
      '5251 Office Park Dr
Bakersfield, CA 93309',
      'Bakersfield',
      'CA',
      '',
      'Yes',
      '35.365529',
      '-119.060677'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Around the Clock Home Care'
        AND o.latitude = '35.365529'
        AND o.longitude = '-119.060677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Around the Clock Home Care'
        AND o.latitude = '35.365529'
        AND o.longitude = '-119.060677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Around the Clock Home Care'
        AND o.latitude = '35.365529'
        AND o.longitude = '-119.060677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Around the Clock Home Care'
        AND o.latitude = '35.365529'
        AND o.longitude = '-119.060677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Around the Clock Home Care'
        AND o.latitude = '35.365529'
        AND o.longitude = '-119.060677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Around the Clock Home Care'
        AND o.latitude = '35.365529'
        AND o.longitude = '-119.060677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Around the Clock Home Care'
        AND o.latitude = '35.365529'
        AND o.longitude = '-119.060677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Around the Clock Home Care'
        AND o.latitude = '35.365529'
        AND o.longitude = '-119.060677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Around the Clock Home Care'
        AND o.latitude = '35.365529'
        AND o.longitude = '-119.060677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Around the Clock Home Care'
        AND o.latitude = '35.365529'
        AND o.longitude = '-119.060677'));

COMMIT;
