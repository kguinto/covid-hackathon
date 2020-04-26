
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
      'Detroit Recieving Hospital ',
      '4201 St Antoine
Detroit, MI 48201',
      'Detroit',
      'MI',
      'Attn:  Emergency Department; you can drop them off at the ambulance bay doors',
      'Yes',
      '42.3537669',
      '-83.0555359'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Detroit Recieving Hospital '
        AND o.latitude = '42.3537669'
        AND o.longitude = '-83.0555359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Detroit Recieving Hospital '
        AND o.latitude = '42.3537669'
        AND o.longitude = '-83.0555359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Detroit Recieving Hospital '
        AND o.latitude = '42.3537669'
        AND o.longitude = '-83.0555359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Detroit Recieving Hospital '
        AND o.latitude = '42.3537669'
        AND o.longitude = '-83.0555359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Detroit Recieving Hospital '
        AND o.latitude = '42.3537669'
        AND o.longitude = '-83.0555359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Detroit Recieving Hospital '
        AND o.latitude = '42.3537669'
        AND o.longitude = '-83.0555359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Detroit Recieving Hospital '
        AND o.latitude = '42.3537669'
        AND o.longitude = '-83.0555359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Detroit Recieving Hospital '
        AND o.latitude = '42.3537669'
        AND o.longitude = '-83.0555359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Detroit Recieving Hospital '
        AND o.latitude = '42.3537669'
        AND o.longitude = '-83.0555359'));

COMMIT;
