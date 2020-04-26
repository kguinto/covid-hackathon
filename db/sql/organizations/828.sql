
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
      'Prince Edward Volunteer Rescue Squad',
      '500 Doswell St
Farmville, VA 23901',
      'Farmville',
      'VA',
      '500 Doswell St',
      'Yes',
      '37.3020258',
      '-78.3803564'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prince Edward Volunteer Rescue Squad'
        AND o.latitude = '37.3020258'
        AND o.longitude = '-78.3803564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prince Edward Volunteer Rescue Squad'
        AND o.latitude = '37.3020258'
        AND o.longitude = '-78.3803564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prince Edward Volunteer Rescue Squad'
        AND o.latitude = '37.3020258'
        AND o.longitude = '-78.3803564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prince Edward Volunteer Rescue Squad'
        AND o.latitude = '37.3020258'
        AND o.longitude = '-78.3803564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prince Edward Volunteer Rescue Squad'
        AND o.latitude = '37.3020258'
        AND o.longitude = '-78.3803564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prince Edward Volunteer Rescue Squad'
        AND o.latitude = '37.3020258'
        AND o.longitude = '-78.3803564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prince Edward Volunteer Rescue Squad'
        AND o.latitude = '37.3020258'
        AND o.longitude = '-78.3803564'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prince Edward Volunteer Rescue Squad'
        AND o.latitude = '37.3020258'
        AND o.longitude = '-78.3803564'));

COMMIT;
