
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
      'Rosemont at Stone Mountain',
      '5160 Springview Ave
Stone Mountain, GA 30083',
      'Stone Mountain',
      'GA',
      '5160 Spring View Circle',
      'Yes',
      '33.816339',
      '-84.177332'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rosemont at Stone Mountain'
        AND o.latitude = '33.816339'
        AND o.longitude = '-84.177332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rosemont at Stone Mountain'
        AND o.latitude = '33.816339'
        AND o.longitude = '-84.177332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rosemont at Stone Mountain'
        AND o.latitude = '33.816339'
        AND o.longitude = '-84.177332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rosemont at Stone Mountain'
        AND o.latitude = '33.816339'
        AND o.longitude = '-84.177332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rosemont at Stone Mountain'
        AND o.latitude = '33.816339'
        AND o.longitude = '-84.177332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rosemont at Stone Mountain'
        AND o.latitude = '33.816339'
        AND o.longitude = '-84.177332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rosemont at Stone Mountain'
        AND o.latitude = '33.816339'
        AND o.longitude = '-84.177332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rosemont at Stone Mountain'
        AND o.latitude = '33.816339'
        AND o.longitude = '-84.177332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rosemont at Stone Mountain'
        AND o.latitude = '33.816339'
        AND o.longitude = '-84.177332'));

COMMIT;
