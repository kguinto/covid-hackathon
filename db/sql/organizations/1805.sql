
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
      'Christus Santa Rosa Medical Center ',
      '2827 Babcock Rd
San Antonio, TX 78229',
      'San Antonio',
      'TX',
      'Mail ',
      'No',
      '29.5131098',
      '-98.5900455'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Santa Rosa Medical Center '
        AND o.latitude = '29.5131098'
        AND o.longitude = '-98.5900455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Santa Rosa Medical Center '
        AND o.latitude = '29.5131098'
        AND o.longitude = '-98.5900455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Santa Rosa Medical Center '
        AND o.latitude = '29.5131098'
        AND o.longitude = '-98.5900455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Santa Rosa Medical Center '
        AND o.latitude = '29.5131098'
        AND o.longitude = '-98.5900455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Santa Rosa Medical Center '
        AND o.latitude = '29.5131098'
        AND o.longitude = '-98.5900455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Santa Rosa Medical Center '
        AND o.latitude = '29.5131098'
        AND o.longitude = '-98.5900455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Santa Rosa Medical Center '
        AND o.latitude = '29.5131098'
        AND o.longitude = '-98.5900455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Santa Rosa Medical Center '
        AND o.latitude = '29.5131098'
        AND o.longitude = '-98.5900455'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Christus Santa Rosa Medical Center '
        AND o.latitude = '29.5131098'
        AND o.longitude = '-98.5900455'));

COMMIT;
