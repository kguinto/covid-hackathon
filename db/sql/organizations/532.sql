
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
      'Flower Mound Family Physicians',
      '2609 Sagebrush Dr Ste 101
Flower Mound, TX 75028',
      'Flower Mound',
      'TX',
      'Deliver to office or through the mail',
      'Unsure',
      '33.0289866',
      '-97.0690459'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flower Mound Family Physicians'
        AND o.latitude = '33.0289866'
        AND o.longitude = '-97.0690459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flower Mound Family Physicians'
        AND o.latitude = '33.0289866'
        AND o.longitude = '-97.0690459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flower Mound Family Physicians'
        AND o.latitude = '33.0289866'
        AND o.longitude = '-97.0690459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flower Mound Family Physicians'
        AND o.latitude = '33.0289866'
        AND o.longitude = '-97.0690459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flower Mound Family Physicians'
        AND o.latitude = '33.0289866'
        AND o.longitude = '-97.0690459'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flower Mound Family Physicians'
        AND o.latitude = '33.0289866'
        AND o.longitude = '-97.0690459'));

COMMIT;
