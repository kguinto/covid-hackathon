
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
      'Mid Coast Hospital ',
      '123 Medical Center Drive
Brunswick, ME 04011 ',
      'Brunswick',
      'ME',
      'Mid Coast Hospital 
PPE Attn: Dr. Brady Colleen Mullin
123 Medical Center Drive
Brunswick, ME 04011 ',
      'No',
      '43.9060845',
      '-69.8904322'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid Coast Hospital '
        AND o.latitude = '43.9060845'
        AND o.longitude = '-69.8904322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid Coast Hospital '
        AND o.latitude = '43.9060845'
        AND o.longitude = '-69.8904322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid Coast Hospital '
        AND o.latitude = '43.9060845'
        AND o.longitude = '-69.8904322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid Coast Hospital '
        AND o.latitude = '43.9060845'
        AND o.longitude = '-69.8904322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid Coast Hospital '
        AND o.latitude = '43.9060845'
        AND o.longitude = '-69.8904322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid Coast Hospital '
        AND o.latitude = '43.9060845'
        AND o.longitude = '-69.8904322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid Coast Hospital '
        AND o.latitude = '43.9060845'
        AND o.longitude = '-69.8904322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid Coast Hospital '
        AND o.latitude = '43.9060845'
        AND o.longitude = '-69.8904322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid Coast Hospital '
        AND o.latitude = '43.9060845'
        AND o.longitude = '-69.8904322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mid Coast Hospital '
        AND o.latitude = '43.9060845'
        AND o.longitude = '-69.8904322'));

COMMIT;
