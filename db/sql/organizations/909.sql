
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
      'Lee''s Summit Medical Center',
      '2100 SE Blue Pkwy
Lee''s Summit, MO 64063',
      'Lee''s Summit',
      'MO',
      'ATTN: Trevor Adkins',
      'No',
      '38.90359',
      '-94.3330751'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lee''s Summit Medical Center'
        AND o.latitude = '38.90359'
        AND o.longitude = '-94.3330751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lee''s Summit Medical Center'
        AND o.latitude = '38.90359'
        AND o.longitude = '-94.3330751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lee''s Summit Medical Center'
        AND o.latitude = '38.90359'
        AND o.longitude = '-94.3330751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lee''s Summit Medical Center'
        AND o.latitude = '38.90359'
        AND o.longitude = '-94.3330751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lee''s Summit Medical Center'
        AND o.latitude = '38.90359'
        AND o.longitude = '-94.3330751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lee''s Summit Medical Center'
        AND o.latitude = '38.90359'
        AND o.longitude = '-94.3330751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lee''s Summit Medical Center'
        AND o.latitude = '38.90359'
        AND o.longitude = '-94.3330751'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lee''s Summit Medical Center'
        AND o.latitude = '38.90359'
        AND o.longitude = '-94.3330751'));

COMMIT;
