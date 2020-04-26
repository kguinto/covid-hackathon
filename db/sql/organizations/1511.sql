
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
      'The Commons on Marice',
      '1380 Marice Dr
Eagan, MN 55121',
      'Eagan',
      'MN',
      'Leave at front desk',
      'Yes',
      '44.8364073',
      '-93.1651806'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Commons on Marice'
        AND o.latitude = '44.8364073'
        AND o.longitude = '-93.1651806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Commons on Marice'
        AND o.latitude = '44.8364073'
        AND o.longitude = '-93.1651806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Commons on Marice'
        AND o.latitude = '44.8364073'
        AND o.longitude = '-93.1651806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Commons on Marice'
        AND o.latitude = '44.8364073'
        AND o.longitude = '-93.1651806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Commons on Marice'
        AND o.latitude = '44.8364073'
        AND o.longitude = '-93.1651806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Commons on Marice'
        AND o.latitude = '44.8364073'
        AND o.longitude = '-93.1651806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Commons on Marice'
        AND o.latitude = '44.8364073'
        AND o.longitude = '-93.1651806'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Commons on Marice'
        AND o.latitude = '44.8364073'
        AND o.longitude = '-93.1651806'));

COMMIT;
