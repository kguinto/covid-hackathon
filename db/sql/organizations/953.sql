
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
      'Institute for Orthopaedic Surgery',
      '801 Medical Dr, Suite B
Lima, OH 45804',
      'Lima ',
      'OH',
      'ATTN: Charlotte Alt',
      'Yes',
      '40.6971707',
      '-84.0875888'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Institute for Orthopaedic Surgery'
        AND o.latitude = '40.6971707'
        AND o.longitude = '-84.0875888'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Institute for Orthopaedic Surgery'
        AND o.latitude = '40.6971707'
        AND o.longitude = '-84.0875888'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Institute for Orthopaedic Surgery'
        AND o.latitude = '40.6971707'
        AND o.longitude = '-84.0875888'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Institute for Orthopaedic Surgery'
        AND o.latitude = '40.6971707'
        AND o.longitude = '-84.0875888'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Institute for Orthopaedic Surgery'
        AND o.latitude = '40.6971707'
        AND o.longitude = '-84.0875888'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Institute for Orthopaedic Surgery'
        AND o.latitude = '40.6971707'
        AND o.longitude = '-84.0875888'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Institute for Orthopaedic Surgery'
        AND o.latitude = '40.6971707'
        AND o.longitude = '-84.0875888'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Institute for Orthopaedic Surgery'
        AND o.latitude = '40.6971707'
        AND o.longitude = '-84.0875888'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Institute for Orthopaedic Surgery'
        AND o.latitude = '40.6971707'
        AND o.longitude = '-84.0875888'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Institute for Orthopaedic Surgery'
        AND o.latitude = '40.6971707'
        AND o.longitude = '-84.0875888'));

COMMIT;
