
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
      'Beth Israel Deaconess Medical Center (BIDMC)',
      '330 Brookline Ave 
Boston, MA 02215',
      'Boston',
      'MA',
      'Email smahone4@bidmc.harvard.edu with detailed information including the brand and the quantity of the items you wish to donate. Visit bilh.org/donations for more information.',
      'Yes',
      '42.3398798',
      '-71.1045583'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face Shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety Goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfectant Wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand Sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('(N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('surgical/procedural masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('face shield masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('disposable gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('goggles/eye protection',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('bleach wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('non-bleach wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('nitrile gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('hand sanitizer)',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3398798'
        AND o.longitude = '-71.1045583'));

COMMIT;
