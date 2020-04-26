
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
      'One Medical',
      '535 Mission St
San Francisco, CA 94105',
      'San Francisco',
      'CA',
      'Leave at front desk, ATTN James Flannagan',
      'Yes',
      '37.7888907',
      '-122.3981003'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7888907'
        AND o.longitude = '-122.3981003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7888907'
        AND o.longitude = '-122.3981003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7888907'
        AND o.longitude = '-122.3981003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7888907'
        AND o.longitude = '-122.3981003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7888907'
        AND o.longitude = '-122.3981003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7888907'
        AND o.longitude = '-122.3981003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.7888907'
        AND o.longitude = '-122.3981003'));

COMMIT;
