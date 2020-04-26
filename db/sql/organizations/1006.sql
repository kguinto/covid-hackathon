
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
      'Cedars-Sinai Medical Center',
      '8700 Beverly Blvd
Los Angeles, CA 90048',
      'Los Angeles',
      'CA',
      'See guidelines and fill out form at https://giving.cedars-sinai.edu/gifts-in-kind-covid-19 to arrange donation | Drop off at residential address inside front porch at 22724 Brandywine Dr, Calabasas, CA 91302 | ATTN: 6 North West',
      'No',
      '34.075232',
      '-118.3801756'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cedars-Sinai Medical Center'
        AND o.latitude = '34.075232'
        AND o.longitude = '-118.3801756'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cedars-Sinai Medical Center'
        AND o.latitude = '34.075232'
        AND o.longitude = '-118.3801756'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cedars-Sinai Medical Center'
        AND o.latitude = '34.075232'
        AND o.longitude = '-118.3801756'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cedars-Sinai Medical Center'
        AND o.latitude = '34.075232'
        AND o.longitude = '-118.3801756'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cedars-Sinai Medical Center'
        AND o.latitude = '34.075232'
        AND o.longitude = '-118.3801756'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cedars-Sinai Medical Center'
        AND o.latitude = '34.075232'
        AND o.longitude = '-118.3801756'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cedars-Sinai Medical Center'
        AND o.latitude = '34.075232'
        AND o.longitude = '-118.3801756'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cedars-Sinai Medical Center'
        AND o.latitude = '34.075232'
        AND o.longitude = '-118.3801756'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cedars-Sinai Medical Center'
        AND o.latitude = '34.075232'
        AND o.longitude = '-118.3801756'));

COMMIT;
