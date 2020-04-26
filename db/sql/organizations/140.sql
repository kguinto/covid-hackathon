
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
      'San Jorge Children''s and Women''s Hospital',
      '6 Amatista St, Senderos de Montehiedra
San Juan, PR 00926',
      'San Juan',
      'PR',
      'Contact Dr. Pedro Escobar at 216-501-2142. Used masks ok.',
      'Yes',
      '18.3318048',
      '-66.0729297'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Jorge Children''s and Women''s Hospital'
        AND o.latitude = '18.3318048'
        AND o.longitude = '-66.0729297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Jorge Children''s and Women''s Hospital'
        AND o.latitude = '18.3318048'
        AND o.longitude = '-66.0729297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Jorge Children''s and Women''s Hospital'
        AND o.latitude = '18.3318048'
        AND o.longitude = '-66.0729297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Jorge Children''s and Women''s Hospital'
        AND o.latitude = '18.3318048'
        AND o.longitude = '-66.0729297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Jorge Children''s and Women''s Hospital'
        AND o.latitude = '18.3318048'
        AND o.longitude = '-66.0729297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Jorge Children''s and Women''s Hospital'
        AND o.latitude = '18.3318048'
        AND o.longitude = '-66.0729297'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Jorge Children''s and Women''s Hospital'
        AND o.latitude = '18.3318048'
        AND o.longitude = '-66.0729297'));

COMMIT;
