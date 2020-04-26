
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
      'Kendall Regional Hospital',
      '11750 SW 40th St
Miami, FL 33175',
      'Miami',
      'FL',
      'Mailing address or administration',
      'No',
      '25.7309346',
      '-80.3861403'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kendall Regional Hospital'
        AND o.latitude = '25.7309346'
        AND o.longitude = '-80.3861403'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kendall Regional Hospital'
        AND o.latitude = '25.7309346'
        AND o.longitude = '-80.3861403'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kendall Regional Hospital'
        AND o.latitude = '25.7309346'
        AND o.longitude = '-80.3861403'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kendall Regional Hospital'
        AND o.latitude = '25.7309346'
        AND o.longitude = '-80.3861403'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kendall Regional Hospital'
        AND o.latitude = '25.7309346'
        AND o.longitude = '-80.3861403'));

COMMIT;
