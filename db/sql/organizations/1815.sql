
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
      'Sholom Home Health Care',
      '3610 Phillips Pkwy
Minneapolis, MN 55426',
      'St. Louis Park',
      'MN',
      'Call 612-508-7970-before arriving, we can pickup curbside',
      'Yes',
      '44.938497',
      '-93.3942299'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home Health Care'
        AND o.latitude = '44.938497'
        AND o.longitude = '-93.3942299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home Health Care'
        AND o.latitude = '44.938497'
        AND o.longitude = '-93.3942299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home Health Care'
        AND o.latitude = '44.938497'
        AND o.longitude = '-93.3942299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home Health Care'
        AND o.latitude = '44.938497'
        AND o.longitude = '-93.3942299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home Health Care'
        AND o.latitude = '44.938497'
        AND o.longitude = '-93.3942299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home Health Care'
        AND o.latitude = '44.938497'
        AND o.longitude = '-93.3942299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home Health Care'
        AND o.latitude = '44.938497'
        AND o.longitude = '-93.3942299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home Health Care'
        AND o.latitude = '44.938497'
        AND o.longitude = '-93.3942299'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sholom Home Health Care'
        AND o.latitude = '44.938497'
        AND o.longitude = '-93.3942299'));

COMMIT;
