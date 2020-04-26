
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
      'Keck Medical Center of USC',
      '1500 San Pablo St
Los Angeles, CA 90033',
      'Los Angeles',
      'CA',
      'Dropoff at concierge desk, 1st Floor. Mailed also acceptable. | Drop off at main entrance please | Attention : Tiffany Vo, 4th Floor Main Operating Room',
      'No',
      '34.0619943',
      '-118.2012607'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keck Medical Center of USC'
        AND o.latitude = '34.0619943'
        AND o.longitude = '-118.2012607'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keck Medical Center of USC'
        AND o.latitude = '34.0619943'
        AND o.longitude = '-118.2012607'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keck Medical Center of USC'
        AND o.latitude = '34.0619943'
        AND o.longitude = '-118.2012607'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keck Medical Center of USC'
        AND o.latitude = '34.0619943'
        AND o.longitude = '-118.2012607'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keck Medical Center of USC'
        AND o.latitude = '34.0619943'
        AND o.longitude = '-118.2012607'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keck Medical Center of USC'
        AND o.latitude = '34.0619943'
        AND o.longitude = '-118.2012607'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keck Medical Center of USC'
        AND o.latitude = '34.0619943'
        AND o.longitude = '-118.2012607'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Keck Medical Center of USC'
        AND o.latitude = '34.0619943'
        AND o.longitude = '-118.2012607'));

COMMIT;
