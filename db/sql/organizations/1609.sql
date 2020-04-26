
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
      'Minden Medical Center',
      '1 Medical Plaza Pl
Minden, LA 71055',
      'Minden',
      'LA',
      '
ATTN: Respiratory Therapy Department',
      'Yes',
      '32.6172391',
      '-93.2863556'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Minden Medical Center'
        AND o.latitude = '32.6172391'
        AND o.longitude = '-93.2863556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Minden Medical Center'
        AND o.latitude = '32.6172391'
        AND o.longitude = '-93.2863556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Minden Medical Center'
        AND o.latitude = '32.6172391'
        AND o.longitude = '-93.2863556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Minden Medical Center'
        AND o.latitude = '32.6172391'
        AND o.longitude = '-93.2863556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Minden Medical Center'
        AND o.latitude = '32.6172391'
        AND o.longitude = '-93.2863556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Minden Medical Center'
        AND o.latitude = '32.6172391'
        AND o.longitude = '-93.2863556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Minden Medical Center'
        AND o.latitude = '32.6172391'
        AND o.longitude = '-93.2863556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Minden Medical Center'
        AND o.latitude = '32.6172391'
        AND o.longitude = '-93.2863556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Minden Medical Center'
        AND o.latitude = '32.6172391'
        AND o.longitude = '-93.2863556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Minden Medical Center'
        AND o.latitude = '32.6172391'
        AND o.longitude = '-93.2863556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95 respirators PAPRs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Minden Medical Center'
        AND o.latitude = '32.6172391'
        AND o.longitude = '-93.2863556'));

COMMIT;
