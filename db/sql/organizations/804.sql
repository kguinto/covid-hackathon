
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
      'Kings County Hospital Center',
      '635 Prospect Place, Apt 1
Brooklyn, NY 11216',
      'New York - Brooklyn',
      'NY',
      'Residential. Thank you for your support! Please call 818-618-0746 or email christianna.sim@downstate.edu to make arrangements. Mailing is acceptable. Alternatively we can pick up if local/within distance pending schedule. For monetary donations, go to https://nychhc.networkforgood.com/',
      'Yes',
      '40.6749969',
      '-73.9555069'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kings County Hospital Center'
        AND o.latitude = '40.6749969'
        AND o.longitude = '-73.9555069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kings County Hospital Center'
        AND o.latitude = '40.6749969'
        AND o.longitude = '-73.9555069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kings County Hospital Center'
        AND o.latitude = '40.6749969'
        AND o.longitude = '-73.9555069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kings County Hospital Center'
        AND o.latitude = '40.6749969'
        AND o.longitude = '-73.9555069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kings County Hospital Center'
        AND o.latitude = '40.6749969'
        AND o.longitude = '-73.9555069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Will take any PPE as long as new or unused',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kings County Hospital Center'
        AND o.latitude = '40.6749969'
        AND o.longitude = '-73.9555069'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('and not expired. Please enquire.',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kings County Hospital Center'
        AND o.latitude = '40.6749969'
        AND o.longitude = '-73.9555069'));

COMMIT;
