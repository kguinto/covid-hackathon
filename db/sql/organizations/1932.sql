
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
      'Amita St Joseph''s Medical Center',
      '333 Madison St
Joliet, IL 60435',
      'Joliet ',
      'IL',
      'Front desk',
      'Yes',
      '41.5279269',
      '-88.1360016'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita St Joseph''s Medical Center'
        AND o.latitude = '41.5279269'
        AND o.longitude = '-88.1360016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita St Joseph''s Medical Center'
        AND o.latitude = '41.5279269'
        AND o.longitude = '-88.1360016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita St Joseph''s Medical Center'
        AND o.latitude = '41.5279269'
        AND o.longitude = '-88.1360016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita St Joseph''s Medical Center'
        AND o.latitude = '41.5279269'
        AND o.longitude = '-88.1360016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita St Joseph''s Medical Center'
        AND o.latitude = '41.5279269'
        AND o.longitude = '-88.1360016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita St Joseph''s Medical Center'
        AND o.latitude = '41.5279269'
        AND o.longitude = '-88.1360016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita St Joseph''s Medical Center'
        AND o.latitude = '41.5279269'
        AND o.longitude = '-88.1360016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita St Joseph''s Medical Center'
        AND o.latitude = '41.5279269'
        AND o.longitude = '-88.1360016'));

COMMIT;
