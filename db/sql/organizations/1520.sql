
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
      'Riverside Resources, Inc.',
      '1124 Shawnee St
Leavenworth, KS 66048',
      'Leavenworth',
      'KS',
      'ATTN:  Michelle Hill   Please mail if at all possible, if not, curbside by mailbox is okay',
      'Yes',
      '39.3181747',
      '-94.9322935'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Resources, Inc.'
        AND o.latitude = '39.3181747'
        AND o.longitude = '-94.9322935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Resources, Inc.'
        AND o.latitude = '39.3181747'
        AND o.longitude = '-94.9322935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Resources, Inc.'
        AND o.latitude = '39.3181747'
        AND o.longitude = '-94.9322935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverside Resources, Inc.'
        AND o.latitude = '39.3181747'
        AND o.longitude = '-94.9322935'));

COMMIT;
