
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
      'Boston Children''s Hospital',
      '53 Binney St
Boston, MA 02115',
      'Boston',
      'MA',
      'ATTN: Receiving - PPE Donations',
      'No',
      '42.3376005',
      '-71.1065611'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Children''s Hospital'
        AND o.latitude = '42.3376005'
        AND o.longitude = '-71.1065611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Children''s Hospital'
        AND o.latitude = '42.3376005'
        AND o.longitude = '-71.1065611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Children''s Hospital'
        AND o.latitude = '42.3376005'
        AND o.longitude = '-71.1065611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Children''s Hospital'
        AND o.latitude = '42.3376005'
        AND o.longitude = '-71.1065611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Children''s Hospital'
        AND o.latitude = '42.3376005'
        AND o.longitude = '-71.1065611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Children''s Hospital'
        AND o.latitude = '42.3376005'
        AND o.longitude = '-71.1065611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Alcohol prep pads',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Children''s Hospital'
        AND o.latitude = '42.3376005'
        AND o.longitude = '-71.1065611'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Quidel 403C Swab Specimen Flocked Tube Flexible Minitip 50 UTM',
    (SELECT id FROM organizations o
      WHERE o.name = 'Boston Children''s Hospital'
        AND o.latitude = '42.3376005'
        AND o.longitude = '-71.1065611'));

COMMIT;
