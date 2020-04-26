
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
      'One Community Health',
      '1500 21st Street
Sacramento, CA 95811',
      'Sacramento ',
      'CA',
      'Drop at parking lot entrance ',
      'Yes',
      '38.5705016',
      '-121.4813674'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Community Health'
        AND o.latitude = '38.5705016'
        AND o.longitude = '-121.4813674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Community Health'
        AND o.latitude = '38.5705016'
        AND o.longitude = '-121.4813674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Community Health'
        AND o.latitude = '38.5705016'
        AND o.longitude = '-121.4813674'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Community Health'
        AND o.latitude = '38.5705016'
        AND o.longitude = '-121.4813674'));

COMMIT;
