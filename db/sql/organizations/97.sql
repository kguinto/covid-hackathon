
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
      'Memorial Hospital at Gulfport ',
      '1340 Broad Ave
Gulfport, MS 39501',
      'Gulfport ',
      'MS',
      'Main entrance for delivery to 7th floor MedSurge Telemetry in a sealed box written in marker for MEDSURGE TELEMETRY 7TH FLOOR',
      'Yes',
      '30.367334',
      '-89.1169184'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital at Gulfport '
        AND o.latitude = '30.367334'
        AND o.longitude = '-89.1169184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital at Gulfport '
        AND o.latitude = '30.367334'
        AND o.longitude = '-89.1169184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital at Gulfport '
        AND o.latitude = '30.367334'
        AND o.longitude = '-89.1169184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital at Gulfport '
        AND o.latitude = '30.367334'
        AND o.longitude = '-89.1169184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital at Gulfport '
        AND o.latitude = '30.367334'
        AND o.longitude = '-89.1169184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital at Gulfport '
        AND o.latitude = '30.367334'
        AND o.longitude = '-89.1169184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital at Gulfport '
        AND o.latitude = '30.367334'
        AND o.longitude = '-89.1169184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital at Gulfport '
        AND o.latitude = '30.367334'
        AND o.longitude = '-89.1169184'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hospital at Gulfport '
        AND o.latitude = '30.367334'
        AND o.longitude = '-89.1169184'));

COMMIT;
