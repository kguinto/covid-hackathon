
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
      'Professional Healthcare Resources',
      '7619 Little River Turnpike #600
Annandale, VA 22003',
      'Annandale',
      'VA',
      'ATTN: Susan   8:30 AM - 5:30 PM weekdays',
      'Yes',
      '38.8315179',
      '-77.2098419'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Professional Healthcare Resources'
        AND o.latitude = '38.8315179'
        AND o.longitude = '-77.2098419'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Professional Healthcare Resources'
        AND o.latitude = '38.8315179'
        AND o.longitude = '-77.2098419'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Professional Healthcare Resources'
        AND o.latitude = '38.8315179'
        AND o.longitude = '-77.2098419'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Professional Healthcare Resources'
        AND o.latitude = '38.8315179'
        AND o.longitude = '-77.2098419'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Professional Healthcare Resources'
        AND o.latitude = '38.8315179'
        AND o.longitude = '-77.2098419'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Professional Healthcare Resources'
        AND o.latitude = '38.8315179'
        AND o.longitude = '-77.2098419'));

COMMIT;
