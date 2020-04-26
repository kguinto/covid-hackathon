
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
      'Registered Nurses Professional Association',
      '950 S Bascom Ave #2120
San Jose, CA 95128',
      'San Jose ',
      'CA',
      'Please drop off donations in the donation box in front of our office. The office building is open Monday -Friday 8am -5pm. Please call 408-292-6061 or e-mail info@rnpa.net once you make your donation as we are in and out of the office, working remotely. Thank You!',
      'Yes',
      '37.3091862',
      '-121.9312227'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Registered Nurses Professional Association'
        AND o.latitude = '37.3091862'
        AND o.longitude = '-121.9312227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Registered Nurses Professional Association'
        AND o.latitude = '37.3091862'
        AND o.longitude = '-121.9312227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Registered Nurses Professional Association'
        AND o.latitude = '37.3091862'
        AND o.longitude = '-121.9312227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Registered Nurses Professional Association'
        AND o.latitude = '37.3091862'
        AND o.longitude = '-121.9312227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Registered Nurses Professional Association'
        AND o.latitude = '37.3091862'
        AND o.longitude = '-121.9312227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Registered Nurses Professional Association'
        AND o.latitude = '37.3091862'
        AND o.longitude = '-121.9312227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Registered Nurses Professional Association'
        AND o.latitude = '37.3091862'
        AND o.longitude = '-121.9312227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Registered Nurses Professional Association'
        AND o.latitude = '37.3091862'
        AND o.longitude = '-121.9312227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Registered Nurses Professional Association'
        AND o.latitude = '37.3091862'
        AND o.longitude = '-121.9312227'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Registered Nurses Professional Association'
        AND o.latitude = '37.3091862'
        AND o.longitude = '-121.9312227'));

COMMIT;
