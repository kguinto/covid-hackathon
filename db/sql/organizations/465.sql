
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
      'The Nephrology Group ',
      '568 E Herndon Ave #201
Fresno, CA 93720',
      'Fresno',
      'CA',
      'Mailing address at front door. Attn: Administrative Services, PPE',
      'No',
      '36.8387255',
      '-119.7774818'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Nephrology Group '
        AND o.latitude = '36.8387255'
        AND o.longitude = '-119.7774818'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Nephrology Group '
        AND o.latitude = '36.8387255'
        AND o.longitude = '-119.7774818'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Nephrology Group '
        AND o.latitude = '36.8387255'
        AND o.longitude = '-119.7774818'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Nephrology Group '
        AND o.latitude = '36.8387255'
        AND o.longitude = '-119.7774818'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Nephrology Group '
        AND o.latitude = '36.8387255'
        AND o.longitude = '-119.7774818'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Nephrology Group '
        AND o.latitude = '36.8387255'
        AND o.longitude = '-119.7774818'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Nephrology Group '
        AND o.latitude = '36.8387255'
        AND o.longitude = '-119.7774818'));

COMMIT;
