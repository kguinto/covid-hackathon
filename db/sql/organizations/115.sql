
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
      'Dartmouth-Hitchcock Medical Center',
      'Green Warehouse
50 N LaBombard Road
North Lebanon, NH 03766',
      'Lebanon',
      'NH',
      'Dartmouth-Hitchcock request for https://www.dartmouth-hitchcock.org/patient-education/sewing-masks.html',
      'Unclear',
      '43.6567726',
      '-72.2407851'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Medical Center'
        AND o.latitude = '43.6567726'
        AND o.longitude = '-72.2407851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Medical Center'
        AND o.latitude = '43.6567726'
        AND o.longitude = '-72.2407851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Medical Center'
        AND o.latitude = '43.6567726'
        AND o.longitude = '-72.2407851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Medical Center'
        AND o.latitude = '43.6567726'
        AND o.longitude = '-72.2407851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Medical Center'
        AND o.latitude = '43.6567726'
        AND o.longitude = '-72.2407851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Medical Center'
        AND o.latitude = '43.6567726'
        AND o.longitude = '-72.2407851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Medical Center'
        AND o.latitude = '43.6567726'
        AND o.longitude = '-72.2407851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Medical Center'
        AND o.latitude = '43.6567726'
        AND o.longitude = '-72.2407851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dartmouth-Hitchcock Medical Center'
        AND o.latitude = '43.6567726'
        AND o.longitude = '-72.2407851'));

COMMIT;
