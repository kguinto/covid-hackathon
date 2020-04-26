
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
      'Community Provider Network RI',
      '110 Jefferson Blvd, Suite A
Warwick, RI 02888',
      'Warwick',
      'RI',
      'Call 401-684-4694',
      'No',
      '41.7450149',
      '-71.4365498'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Provider Network RI'
        AND o.latitude = '41.7450149'
        AND o.longitude = '-71.4365498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Provider Network RI'
        AND o.latitude = '41.7450149'
        AND o.longitude = '-71.4365498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Provider Network RI'
        AND o.latitude = '41.7450149'
        AND o.longitude = '-71.4365498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Provider Network RI'
        AND o.latitude = '41.7450149'
        AND o.longitude = '-71.4365498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Provider Network RI'
        AND o.latitude = '41.7450149'
        AND o.longitude = '-71.4365498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Provider Network RI'
        AND o.latitude = '41.7450149'
        AND o.longitude = '-71.4365498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Provider Network RI'
        AND o.latitude = '41.7450149'
        AND o.longitude = '-71.4365498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Provider Network RI'
        AND o.latitude = '41.7450149'
        AND o.longitude = '-71.4365498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Provider Network RI'
        AND o.latitude = '41.7450149'
        AND o.longitude = '-71.4365498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Provider Network RI'
        AND o.latitude = '41.7450149'
        AND o.longitude = '-71.4365498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Biohazard bags',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Provider Network RI'
        AND o.latitude = '41.7450149'
        AND o.longitude = '-71.4365498'));

COMMIT;
