
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
      'Community Options Inc',
      '212 Route 38 West, Suite 200
Moorestown, NJ 08057',
      'Moorestown',
      'NJ',
      '20 Group Homes caring for 70 individuals with physical/intellectual disabilities plus our 24/7 staff

Mail packages, attn: Kathryn Bryant
Drop off: we are located above the flower shop to the left of the building. ',
      'Yes',
      '39.9532818',
      '-74.9476135'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '39.9532818'
        AND o.longitude = '-74.9476135'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '39.9532818'
        AND o.longitude = '-74.9476135'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '39.9532818'
        AND o.longitude = '-74.9476135'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '39.9532818'
        AND o.longitude = '-74.9476135'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '39.9532818'
        AND o.longitude = '-74.9476135'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '39.9532818'
        AND o.longitude = '-74.9476135'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '39.9532818'
        AND o.longitude = '-74.9476135'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '39.9532818'
        AND o.longitude = '-74.9476135'));

COMMIT;
