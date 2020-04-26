
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
      'Memorial Hermann Hospital',
      '6411 Fannin St
Houston, TX 77030',
      'Houston',
      'TX',
      'Literally anything. I''ll come to you if needed. We''re the tracheostomy team at MHH TMC and don''t have access to proper PPE.',
      'Unsure',
      '29.7140772',
      '-95.3951404'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hermann Hospital'
        AND o.latitude = '29.7140772'
        AND o.longitude = '-95.3951404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPR',
    (SELECT id FROM organizations o
      WHERE o.name = 'Memorial Hermann Hospital'
        AND o.latitude = '29.7140772'
        AND o.longitude = '-95.3951404'));

COMMIT;
