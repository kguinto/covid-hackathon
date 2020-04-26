
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
      'Terry Reilly Health Services ',
      '207 1st St S, 
Nampa, ID 83651',
      'Nampa',
      'ID',
      'May drop off with screening staff located outside of entrance. Mail should be addressed  ATTN: Cindy Miller',
      'Open boxes only with labeling/identifying information to confirm integrity of product',
      '43.5854739',
      '-116.5703559'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terry Reilly Health Services '
        AND o.latitude = '43.5854739'
        AND o.longitude = '-116.5703559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terry Reilly Health Services '
        AND o.latitude = '43.5854739'
        AND o.longitude = '-116.5703559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terry Reilly Health Services '
        AND o.latitude = '43.5854739'
        AND o.longitude = '-116.5703559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terry Reilly Health Services '
        AND o.latitude = '43.5854739'
        AND o.longitude = '-116.5703559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terry Reilly Health Services '
        AND o.latitude = '43.5854739'
        AND o.longitude = '-116.5703559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terry Reilly Health Services '
        AND o.latitude = '43.5854739'
        AND o.longitude = '-116.5703559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terry Reilly Health Services '
        AND o.latitude = '43.5854739'
        AND o.longitude = '-116.5703559'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Terry Reilly Health Services '
        AND o.latitude = '43.5854739'
        AND o.longitude = '-116.5703559'));

COMMIT;
