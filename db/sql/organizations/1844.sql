
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
      'TLC Pediatrics of Frisco',
      '3550 Parkwood Blvd #701
Frisco, TX 75034',
      'Frisco',
      'TX',
      'can be dropped at front door or mailed to us ATTN: Trish Echaniz',
      'Yes',
      '33.109781',
      '-96.8153804'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'TLC Pediatrics of Frisco'
        AND o.latitude = '33.109781'
        AND o.longitude = '-96.8153804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'TLC Pediatrics of Frisco'
        AND o.latitude = '33.109781'
        AND o.longitude = '-96.8153804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'TLC Pediatrics of Frisco'
        AND o.latitude = '33.109781'
        AND o.longitude = '-96.8153804'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'TLC Pediatrics of Frisco'
        AND o.latitude = '33.109781'
        AND o.longitude = '-96.8153804'));

COMMIT;
