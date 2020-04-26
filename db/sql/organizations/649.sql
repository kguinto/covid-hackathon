
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
      'Wake Forest Baptist Medical Center',
      '1 Medical Center Blvd
Winston-Salem, NC 27157',
      'Winston-Salem ',
      'NC',
      'At the front or Shipping',
      'Yes',
      '36.090271',
      '-80.2714172'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wake Forest Baptist Medical Center'
        AND o.latitude = '36.090271'
        AND o.longitude = '-80.2714172'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('hazmat suits',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wake Forest Baptist Medical Center'
        AND o.latitude = '36.090271'
        AND o.longitude = '-80.2714172'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wake Forest Baptist Medical Center'
        AND o.latitude = '36.090271'
        AND o.longitude = '-80.2714172'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wake Forest Baptist Medical Center'
        AND o.latitude = '36.090271'
        AND o.longitude = '-80.2714172'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Wake Forest Baptist Medical Center'
        AND o.latitude = '36.090271'
        AND o.longitude = '-80.2714172'));

COMMIT;
