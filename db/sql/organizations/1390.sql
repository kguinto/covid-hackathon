
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
      'Methodist Hospital',
      '3601 Park Center Blvd #901
Minneapolis, MN 55416',
      'St. Louis Park',
      'MN',
      'Please call 612-810-3541',
      'No',
      '44.9373898',
      '-93.3446376'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital'
        AND o.latitude = '44.9373898'
        AND o.longitude = '-93.3446376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital'
        AND o.latitude = '44.9373898'
        AND o.longitude = '-93.3446376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital'
        AND o.latitude = '44.9373898'
        AND o.longitude = '-93.3446376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Hospital'
        AND o.latitude = '44.9373898'
        AND o.longitude = '-93.3446376'));

COMMIT;
