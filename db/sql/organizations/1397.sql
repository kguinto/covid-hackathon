
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
      'Landmark Medical Center ',
      '5 Cedar Ridge Ln
Mansfield, MA 02048',
      'Mansfield',
      'MA',
      'Text 617-794-8243 or Attn: Marianna',
      'Yes',
      '42.0087518',
      '-71.1700556'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Landmark Medical Center '
        AND o.latitude = '42.0087518'
        AND o.longitude = '-71.1700556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Landmark Medical Center '
        AND o.latitude = '42.0087518'
        AND o.longitude = '-71.1700556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Landmark Medical Center '
        AND o.latitude = '42.0087518'
        AND o.longitude = '-71.1700556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Landmark Medical Center '
        AND o.latitude = '42.0087518'
        AND o.longitude = '-71.1700556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Landmark Medical Center '
        AND o.latitude = '42.0087518'
        AND o.longitude = '-71.1700556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Landmark Medical Center '
        AND o.latitude = '42.0087518'
        AND o.longitude = '-71.1700556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Landmark Medical Center '
        AND o.latitude = '42.0087518'
        AND o.longitude = '-71.1700556'));

COMMIT;
