
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
      'Yale New Haven Health - Bridgeport Hospital',
      '267 Grant Street
Bridgeport, CT 06610',
      'Bridgeport',
      'CT',
      'Anne Diamond, Hospital President (203) 384-3000 or Email DonationsPPE@ynhh.org with instructions as to how hospital staff may contact you',
      'Yes',
      '41.1889873',
      '-73.1664362'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health - Bridgeport Hospital'
        AND o.latitude = '41.1889873'
        AND o.longitude = '-73.1664362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health - Bridgeport Hospital'
        AND o.latitude = '41.1889873'
        AND o.longitude = '-73.1664362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health - Bridgeport Hospital'
        AND o.latitude = '41.1889873'
        AND o.longitude = '-73.1664362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health - Bridgeport Hospital'
        AND o.latitude = '41.1889873'
        AND o.longitude = '-73.1664362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health - Bridgeport Hospital'
        AND o.latitude = '41.1889873'
        AND o.longitude = '-73.1664362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health - Bridgeport Hospital'
        AND o.latitude = '41.1889873'
        AND o.longitude = '-73.1664362'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Health - Bridgeport Hospital'
        AND o.latitude = '41.1889873'
        AND o.longitude = '-73.1664362'));

COMMIT;
