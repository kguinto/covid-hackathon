
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
      'Seven Hills Women''s Health Centers',
      '6901 Burlington Pike
Florence, KY 41042',
      'Florence',
      'KY',
      'Deliver to office or pick up',
      'Unsure',
      '39.009287',
      '-84.629239'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seven Hills Women''s Health Centers'
        AND o.latitude = '39.009287'
        AND o.longitude = '-84.629239'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Level 2 face masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seven Hills Women''s Health Centers'
        AND o.latitude = '39.009287'
        AND o.longitude = '-84.629239'));

COMMIT;
