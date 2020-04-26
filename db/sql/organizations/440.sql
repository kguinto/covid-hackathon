
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
      'Maimonides Medical Center',
      '4802 10th Ave
Brooklyn, NY 11219',
      'New York - Brooklyn',
      'NY',
      'Please coordinate all donations to covid-resources@maimonidesmed.org and cc EDickman@maimonidesmed.org on the email to arrange drop off or delivery. ',
      'unsure',
      '40.639262',
      '-73.9981537'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maimonides Medical Center'
        AND o.latitude = '40.639262'
        AND o.longitude = '-73.9981537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maimonides Medical Center'
        AND o.latitude = '40.639262'
        AND o.longitude = '-73.9981537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maimonides Medical Center'
        AND o.latitude = '40.639262'
        AND o.longitude = '-73.9981537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maimonides Medical Center'
        AND o.latitude = '40.639262'
        AND o.longitude = '-73.9981537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maimonides Medical Center'
        AND o.latitude = '40.639262'
        AND o.longitude = '-73.9981537'));

COMMIT;
