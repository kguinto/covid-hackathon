
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
      'Yale New Haven Hospital',
      '20 York St
New Haven, CT 06510',
      'New Haven',
      'CT',
      'Email DonationsPPE@ynhh.org with instructions as to how hospital staff may contact you, or Attn: Gina Siddiqui',
      'No',
      '41.3044229',
      '-72.9355663'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital'
        AND o.latitude = '41.3044229'
        AND o.longitude = '-72.9355663'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital'
        AND o.latitude = '41.3044229'
        AND o.longitude = '-72.9355663'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital'
        AND o.latitude = '41.3044229'
        AND o.longitude = '-72.9355663'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital'
        AND o.latitude = '41.3044229'
        AND o.longitude = '-72.9355663'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital'
        AND o.latitude = '41.3044229'
        AND o.longitude = '-72.9355663'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital'
        AND o.latitude = '41.3044229'
        AND o.longitude = '-72.9355663'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital'
        AND o.latitude = '41.3044229'
        AND o.longitude = '-72.9355663'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital'
        AND o.latitude = '41.3044229'
        AND o.longitude = '-72.9355663'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital'
        AND o.latitude = '41.3044229'
        AND o.longitude = '-72.9355663'));

COMMIT;
