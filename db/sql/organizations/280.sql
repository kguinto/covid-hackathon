
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
      'Volunteers of America (Hope for Homes)',
      '1400 E Mission Blvd
Pomona, CA 91766',
      'Pomona ',
      'CA',
      'Ask for Mary Twadros or Taneisha Antoine at security gate for donation drop off ',
      'Yes',
      '34.0548072',
      '-117.7281282'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Volunteers of America (Hope for Homes)'
        AND o.latitude = '34.0548072'
        AND o.longitude = '-117.7281282'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Volunteers of America (Hope for Homes)'
        AND o.latitude = '34.0548072'
        AND o.longitude = '-117.7281282'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Volunteers of America (Hope for Homes)'
        AND o.latitude = '34.0548072'
        AND o.longitude = '-117.7281282'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Volunteers of America (Hope for Homes)'
        AND o.latitude = '34.0548072'
        AND o.longitude = '-117.7281282'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Volunteers of America (Hope for Homes)'
        AND o.latitude = '34.0548072'
        AND o.longitude = '-117.7281282'));

COMMIT;
