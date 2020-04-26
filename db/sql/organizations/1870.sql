
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
      'De Paul Treatment Centers',
      '1312 SW Washington St
Portland, OR 97205',
      'Portland',
      'OR',
      'curbside procedure',
      'Yes',
      '45.5221121',
      '-122.68479'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'De Paul Treatment Centers'
        AND o.latitude = '45.5221121'
        AND o.longitude = '-122.68479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'De Paul Treatment Centers'
        AND o.latitude = '45.5221121'
        AND o.longitude = '-122.68479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'De Paul Treatment Centers'
        AND o.latitude = '45.5221121'
        AND o.longitude = '-122.68479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'De Paul Treatment Centers'
        AND o.latitude = '45.5221121'
        AND o.longitude = '-122.68479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'De Paul Treatment Centers'
        AND o.latitude = '45.5221121'
        AND o.longitude = '-122.68479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'De Paul Treatment Centers'
        AND o.latitude = '45.5221121'
        AND o.longitude = '-122.68479'));

COMMIT;
