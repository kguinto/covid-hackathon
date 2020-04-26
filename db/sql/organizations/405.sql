
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
      'Saddleback Memorial Hospital ',
      '24451 Health Center Dr
Laguna Hills, CA 92653',
      'Laguna Hills ',
      'CA',
      'ATTN: Anesthesia Dept. ',
      'Yes',
      '33.6093252',
      '-117.7089298'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saddleback Memorial Hospital '
        AND o.latitude = '33.6093252'
        AND o.longitude = '-117.7089298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saddleback Memorial Hospital '
        AND o.latitude = '33.6093252'
        AND o.longitude = '-117.7089298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saddleback Memorial Hospital '
        AND o.latitude = '33.6093252'
        AND o.longitude = '-117.7089298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saddleback Memorial Hospital '
        AND o.latitude = '33.6093252'
        AND o.longitude = '-117.7089298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saddleback Memorial Hospital '
        AND o.latitude = '33.6093252'
        AND o.longitude = '-117.7089298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saddleback Memorial Hospital '
        AND o.latitude = '33.6093252'
        AND o.longitude = '-117.7089298'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saddleback Memorial Hospital '
        AND o.latitude = '33.6093252'
        AND o.longitude = '-117.7089298'));

COMMIT;
