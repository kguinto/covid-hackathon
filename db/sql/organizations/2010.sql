
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
      'UT Southwestern General Internal Medicine - Las Colins ',
      '701 Tuscan Dr #201
Irving, TX 75039',
      'Irving',
      'TX',
      'Please deliver to the clinic address 701 Tuscan Drive #210, Irving Tx 75039. Attention Dr Grasty 214-964-0600',
      'Yes',
      '32.8985523',
      '-96.9572899'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Southwestern General Internal Medicine - Las Colins '
        AND o.latitude = '32.8985523'
        AND o.longitude = '-96.9572899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Southwestern General Internal Medicine - Las Colins '
        AND o.latitude = '32.8985523'
        AND o.longitude = '-96.9572899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Southwestern General Internal Medicine - Las Colins '
        AND o.latitude = '32.8985523'
        AND o.longitude = '-96.9572899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Southwestern General Internal Medicine - Las Colins '
        AND o.latitude = '32.8985523'
        AND o.longitude = '-96.9572899'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Southwestern General Internal Medicine - Las Colins '
        AND o.latitude = '32.8985523'
        AND o.longitude = '-96.9572899'));

COMMIT;
